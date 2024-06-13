cask "iterm2-ai-plugin" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "1.1"
  sha256 "484ee4fe3176a82c90993a16d08ab89a5c5b5a84e8fea1f481d7644f0f64a7f9"

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
