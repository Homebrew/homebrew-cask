cask "peazip" do
  arch arm: "aarch64", intel: "x86_64"

  version "9.0.0"
  sha256 arm:   "556db5cc95a229dbb16c9c29085e1978fbae2138c0ddb7f935a572047bd855e8",
         intel: "65f184f2a79be59096231b9f18daf4a22018c4f47f99c4b503278b86bb60af9a"

  url "https://github.com/peazip/PeaZip/releases/download/#{version}/peazip-#{version}.DARWIN.#{arch}.dmg",
      verified: "github.com/peazip/PeaZip/"
  name "PeaZip"
  desc "Open source archive manager"
  homepage "https://peazip.github.io/"

  app "peazip.app", target: "PeaZip.app"

  zap trash: [
    "~/Library/Preferences/com.company.peazip.plist",
    "~/Library/Saved Application State/com.company.peazip.savedState",
  ]
end
