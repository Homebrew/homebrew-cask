cask "langflow" do
  arch arm: "aarch64", intel: "universal"

  version "1.9.0,v1.9.0"
  sha256 arm:   "aba3400911a60f91ba8f51c53966c98f0ee51d7c2ca1ff04298bf3faa1114756",
         intel: "88f61af1633452c23df1b87cc72d60b49fee5249cde76ff4991f18c63d8f9d0c"

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
