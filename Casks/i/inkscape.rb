cask "inkscape" do
  arch arm: "arm64", intel: "x86_64"

  version "1.4.3,"
  sha256 arm:   "f4aa9c9b2e06db432c6f81a494ad9aa59b87cb7d9539cd7e6f6000002cb9edff",
         intel: "c4e7056dee4faaa623730e93a94ad1bfa017643eb85a58f9d25419397ccc5073"

  url "https://media.inkscape.org/dl/resources/file/Inkscape-#{version.csv.first}#{version.csv.second}_#{arch}.dmg"
  name "Inkscape"
  desc "Vector graphics editor"
  homepage "https://inkscape.org/"

  livecheck do
    url "https://inkscape.org/release/all/mac-os-x/"
    regex(/Inkscape[._-]v?(\d+(?:\.\d+)*\.\d)(\d*)[._-]#{arch}\.dmg">/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  depends_on macos: ">= :big_sur"

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
