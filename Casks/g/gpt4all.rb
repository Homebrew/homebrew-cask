cask "gpt4all" do
  version "3.9.0"
  sha256 "920e6fab3830a75fb54ef3e5b951caf86df832323d157d46c1c127bc5e123da6"

  url "https://github.com/nomic-ai/gpt4all/releases/download/v#{version}/gpt4all-installer-macos-v#{version}.dmg",
      verified: "github.com/nomic-ai/gpt4all/"
  name "GPT4All"
  desc "Run LLMs locally"
  homepage "https://www.nomic.ai/gpt4all/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  installer manual: "gpt4all-installer-darwin.app"

  uninstall script: "/Applications/gpt4all/maintenancetool.app/Contents/MacOS/maintenancetool",
            delete: "~/Library/Application Support/nomic.ai/GPT4All"

  zap trash: [
    "~/Library/Application Support/GPT4All",
    "~/Library/Preferences/com.nomic-ai.gpt4all.plist",
    "~/Library/Saved Application State/gpt4all.savedState",
  ]
end
