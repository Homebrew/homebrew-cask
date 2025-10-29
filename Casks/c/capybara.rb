cask "capybara" do
  version "1.0.0"
  sha256 "ae6da4d7e355a8609e55babaf9e0119ff039280670f7067a864eac2fc3d7641a"

  url "https://github.com/ttsalpha/Capybara/releases/download/v#{version}/Capybara.dmg",
      verified: "github.com/ttsalpha/"
  name "Capybara"
  desc "Compact toolbox simplifying developer data tasks"
  homepage "https://capybara.ttsalpha.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Capybara.app"

  uninstall delete: "/Applications/Capybara.app"

  zap trash: [
    "~/Library/Application Support/Capybara",
    "~/Library/Containers/com.ttsalpha.Capybara",
    "~/Library/Preferences/com.ttsalpha.capybara.plist",
  ]
end
