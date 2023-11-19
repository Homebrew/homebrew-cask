cask "inkscape" do
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "1.3.1,44477"
    sha256 "6e6649573a6041ff8e3e363fc69f4f7687b4a2f12c7d1fd4e3c4abfef20fadef"
  end
  on_intel do
    version "1.3.1,44477"
    sha256 "438df517944ffb5bad3453b253a02a137df6240acfd0e3a7618b66124e6fcddd"
  end

  url "https://inkscape.org/gallery/item/#{version.csv.second}/Inkscape-#{version.csv.first}_#{arch}.dmg"
  name "Inkscape"
  desc "Vector graphics editor"
  homepage "https://inkscape.org/"

  livecheck do
    url "https://inkscape.org/release/all/mac-os-x/"
    regex(%r{href=.*?item/(\d+)/Inkscape[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  app "Inkscape.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/inkscape.wrapper.sh"
  binary shimscript, target: "inkscape"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{staged_path}/Inkscape.app/Contents/MacOS/inkscape' "$@"
    EOS
  end

  zap trash: [
    "~/.config/inkscape",
    "~/Library/Application Support/Inkscape",
    "~/Library/Application Support/org.inkscape.Inkscape",
    "~/Library/Caches/org.inkscape.Inkscape*",
    "~/Library/Preferences/org.inkscape.Inkscape.plist",
    "~/Library/Saved Application State/org.inkscape.Inkscape.savedState",
  ]
end
