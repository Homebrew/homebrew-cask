cask "jamie" do
  arch arm: "-arm64"

  version "4.2.3"
  sha256 arm:   "86ef3784b6156c4b0582b1eb2e2824ebf5278364574e90325547e1c32b528ee3",
         intel: "ab0ffb5a152377739be7f1be13104892078653e41f665e06a1590a23af7ea8fc"

  url "https://github.com/louismorgner/jamie-release/releases/download/v#{version}/jamie-#{version}#{arch}.dmg",
      verified: "github.com/louismorgner/jamie-release/"
  name "jamie"
  desc "AI-powered meeting notes"
  homepage "https://meetjamie.ai/"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "jamie.app"

  zap trash: "~/Library/Application Support/jamie"
end
