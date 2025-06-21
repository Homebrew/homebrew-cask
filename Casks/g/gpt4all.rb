cask "gpt4all" do
  version "3.10.0"
  sha256 "d0d98ab465de516af6d50fc013abbf9a8967274f2d171bbf69198873ce255b5f"

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
