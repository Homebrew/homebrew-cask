cask "itermai" do
  version "1.1"
  sha256 "6e5547505909df1b1e9355e61f97c4ddc575373d8ef24074c320788426f99f42"

  url "https://iterm2.com/downloads/ai-plugin/iTermAI-#{version}.zip"
  name "iTerm2 AI Plugin"
  desc "Enable generative AI features in iTerm2"
  homepage "https://iterm2.com/ai-plugin.html"

  livecheck do
    url :homepage
    regex(%r{href=.*?/iTermAI[._-](\d+(?:\.\d+)*)\.zip}i)
  end

  depends_on macos: ">= :catalina"

  app "iTermAI.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.googlecode.iterm2.itermai.sfl*",
    "~/Library/Containers/iTermAI",
  ]
end
