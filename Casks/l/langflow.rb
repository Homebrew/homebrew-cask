cask "langflow" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.5.1,1.5.0.post1"
  sha256 arm:   "fdfe5cb466976ce1c00ddda6d00d3489e5774ad3d801dd4b8df56ae1800bcb6e",
         intel: "fdfe5cb466976ce1c00ddda6d00d3489e5774ad3d801dd4b8df56ae1800bcb6e"

  url "https://github.com/langflow-ai/langflow/releases/download/#{version.csv.second || version}/Langflow_#{version.csv.first}_aarch64.dmg",
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

  app "Langflow.app"

  zap trash: [
    "~/.langflow",
    "~/Library/Caches/com.Langflow",
    "~/Library/Caches/langflow",
    "~/Library/Logs/com.Langflow",
    "~/Library/Preferences/com.Langflow.plist",
    "~/Library/WebKit/com.Langflow",
  ]
end
