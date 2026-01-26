cask "langflow" do
  arch arm: "aarch64", intel: "universal"

  version "1.7.1"
  sha256 arm:   "fcc2d0294a2846525845b62ddda486ff6b71c062b7ef085b8334e0ccc2b5c8e1",
         intel: "56bef66ed4bcfe66f8b032ed4bd4ed1cf174453af94122884a1b9b84da332cf5"

  url "https://github.com/langflow-ai/langflow/releases/download/#{version.csv.second || version}/Langflow_#{version.csv.first}_#{arch}.dmg",
      verified: "github.com/langflow-ai/langflow/"
  name "Langflow Desktop"
  desc "Low-code AI-workflow building tool"
  homepage "https://www.langflow.org/desktop"

  livecheck do
    url :url
    regex(/^Langflow[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"]  || release["prerelease"]

        release["assets"]&.map do |asset|
          match = asset["name"]&.match(regex)
          next if match.blank?

          next match[1] if match[1] == release["tag_name"]

          "#{match[1]},#{release["tag_name"]}"
        end
      end.flatten
    end
  end

  depends_on macos: ">= :ventura"

  app "Langflow .app"

  zap trash: [
    "~/.langflow",
    "~/Library/Caches/com.Langflow",
    "~/Library/Caches/langflow",
    "~/Library/Logs/com.Langflow",
    "~/Library/Preferences/com.Langflow.plist",
    "~/Library/WebKit/com.Langflow",
  ]
end
