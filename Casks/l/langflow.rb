cask "langflow" do
  arch arm: "aarch64", intel: "universal"

  version "1.13.0,v1.13.0"
  sha256 arm:   "309412db77f2c3ae0bd06a0427f2c0ff4f46bab7d6b1c903dff5018542d72fc7",
         intel: "2e25659faff31e0922366609b689fa1fa40a58535eeee3e12370bddb2ef8d92a"

  url "https://github.com/langflow-ai/langflow/releases/download/#{version.csv.second || version}/Langflow_#{version.csv.first}_#{arch}.dmg"
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

  depends_on macos: :ventura

  app "Langflow .app"

  zap trash: [
    "~/.langflow",
    "~/Library/Application Support/com.LangflowDesktop",
    "~/Library/Caches/com.Langflow",
    "~/Library/Caches/com.LangflowDesktop",
    "~/Library/Caches/langflow",
    "~/Library/Logs/com.Langflow",
    "~/Library/Logs/com.LangflowDesktop",
    "~/Library/Preferences/com.Langflow.plist",
    "~/Library/Preferences/com.LangflowDesktop.plist",
    "~/Library/WebKit/com.Langflow",
    "~/Library/WebKit/com.LangflowDesktop",
  ]
end
