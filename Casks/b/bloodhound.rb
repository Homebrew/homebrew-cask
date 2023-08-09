cask "bloodhound" do
  arch arm: "arm64", intel: "x64"

  version "4.3.1"
  sha256 arm:   "86e37a3b78826bd1c9ebd6b6c65eab9e81261af8f18abe8fda8311ce500e4316",
         intel: "1b191ef3f920d48b1f4b8e9db4df2cb518d3c067eeb29b7bbe4ea48c4392de65"

  url "https://github.com/BloodHoundAD/BloodHound/releases/download/v#{version}/BloodHound-darwin-#{arch}.zip"
  name "bloodhound"
  desc "Six Degrees of Domain Admin"
  homepage "https://github.com/BloodHoundAD/BloodHound"

  app "BloodHound-darwin-#{arch}/BloodHound.app"

  zap trash: [
    "~/Library/Application Support/bloodhound",
    "~/Library/Preferences/com.electron.bloodhound.plist",
    "~/Library/Saved Application State/com.electron.bloodhound.savedState",
  ]

  caveats <<~EOS
    According to https://github.com/BloodHoundAD/BloodHound/issues/504
    this app will not work with quarantine attributes.
  EOS
end
