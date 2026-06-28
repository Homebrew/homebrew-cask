cask "pling" do
  version "1.0.0"
  sha256 "3f510966db093e7198c354daa38a648597520897cb25b9515282aca3e73e7fc4"

  url "https://github.com/johnnyfekete/pling/releases/download/v#{version}/Pling.zip"
  name "Pling"
  desc "Retro tally counter for the menu bar"
  homepage "https://pling.johnnyfekete.com/"

  depends_on macos: ">= :sonoma"

  app "Pling.app"

  zap trash: [
    "~/Library/Containers/com.johnnyfekete.DailyScore",
  ]
end
