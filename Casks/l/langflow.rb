cask "langflow" do
  arch arm: "aarch64", intel: "universal"

  version "1.6.2,1.6.9"
  sha256 arm:   "f6d24bd964a117cd226bb8315e456a016d806afd7541808624a08675175d019d",
         intel: "a120111c423db47237123c7b65b0db14a69be2b937da737c9ea79b548e8f5ce3"

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
