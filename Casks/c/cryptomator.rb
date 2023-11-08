cask "cryptomator" do
  arch arm: "-arm64", intel: "-x64"

  version "1.11.0"
  sha256 arm:   "09242403b618996bd222fbb43410aa3db635079323a23a365fbfbbdd96b4940b",
         intel: "5a950260e813948515d9a5152a9673e7a342bf2cfb07b499451a4d28f26a02f9"

  url "https://github.com/cryptomator/cryptomator/releases/download/#{version}/Cryptomator-#{version}#{arch}.dmg",
      verified: "github.com/cryptomator/cryptomator/"
  name "Cryptomator"
  desc "Multi-platform client-side cloud file encryption tool"
  homepage "https://cryptomator.org/"

  depends_on macos: ">= :high_sierra"

  app "Cryptomator.app"

  zap trash: [
    "~/Library/Application Support/Cryptomator",
    "~/Library/Logs/Cryptomator",
    "~/Library/Preferences/org.cryptomator.plist",
  ]
end
