cask "inkscape" do
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "1.3.0,42339"
    sha256 "e37b5f8b8995a0ecc41ca7fcae90d79bcd652b7a25d2f6e52c4e2e79aef7fec1"
  end
  on_intel do
    version "1.3.0,42338"
    sha256 "e97de6804d8811dd2f1bc45d709d87fb6fe45963aae710c24a4ed655ecd8eb8a"
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
