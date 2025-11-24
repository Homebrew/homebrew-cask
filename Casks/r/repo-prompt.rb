cask "repo-prompt" do
  version "1.5.40"
  sha256 "6e7ded1d67062112681a89d3446a0d6dbce86b6465be4ba5686ed66cc2102d3e"

  url "https://repoprompt.s3.us-east-2.amazonaws.com/RepoPrompt-#{version}.dmg",
      verified: "repoprompt.s3.us-east-2.amazonaws.com/"
  name "Repo Prompt"
  desc "Prompt generation tool"
  homepage "https://repoprompt.com/"

  livecheck do
    url "https://repoprompt.s3.us-east-2.amazonaws.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Repo Prompt.app"

  zap trash: [
    "~/Library/Application Support/com.pvncher.repoprompt",
    "~/Library/Application Support/RepoPrompt",
    "~/Library/Caches/com.pvncher.repoprompt",
    "~/Library/HTTPStorages/com.pvncher.repoprompt",
    "~/Library/HTTPStorages/com.pvncher.repoprompt.binarycookies",
    "~/Library/Preferences/com.pvncher.repoprompt.plist",
  ]
end
