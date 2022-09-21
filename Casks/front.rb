cask "front" do
  arch arm: "arm64", intel: "x64"

  version "3.37.11"
  sha256 arm:   "9c2f129eeb9d1af2e46890e9cdd6e4d15be31f52d4018317521fb660a7232c64",
         intel: "accf8e5ef846b310a09ba6cae1ad8dd1da5575b27d4425a6890e02162a58f36a"

  url "https://dl.frontapp.com/desktop/builds/#{version}/Front-#{version}-#{arch}.zip",
      verified: "dl.frontapp.com/desktop/builds"
  name "Front"
  desc "Customer communication platform"
  homepage "https://front.com/"

  livecheck do
    url "https://dl.frontapp.com/desktop/updates/latest/mac/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :el_capitan"

  app "Front.app"

  zap trash: [
    "~/Library/Application Support/Front",
    "~/Library/FrontBoard",
    "~/Library/Logs/Front",
    "~/Library/Preferences/com.frontapp.Front.plist",
    "~/Library/Saved Application State/com.frontapp.Front.savedState",
  ]
end
