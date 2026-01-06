cask "tev" do
  arch intel: "-intel"

  version "2.7.0"
  sha256 arm:   "2b73ebbd132f99cebb4f4cd21c66707bd61ec080a7441a115bdcf45b1bac1051",
         intel: "44698139343cf621aaf2aac5bb332f9295f45dc08beb001f1ac544d96e21f04f"

  url "https://github.com/Tom94/tev/releases/download/v#{version}/tev#{arch}.dmg"
  name "tev"
  desc "High dynamic range (HDR) image viewer with accurate color management"
  homepage "https://github.com/Tom94/tev"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  app "tev.app"
  binary "#{appdir}/tev.app/Contents/MacOS/tev"

  zap trash: "~/Library/Preferences/org.tom94.tev.plist"
end
