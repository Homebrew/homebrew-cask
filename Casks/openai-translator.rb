cask "openai-translator" do
  arch intel: "x64", arm: "aarch64"

  version "0.0.36"
  sha256 intel: "55cff09700d3dd4f634142e1fd360b8c2b5289e79f8a1557d06a278d6ad1c6c8",
         arm:   "0edfecd0984f36d5828f45c60e985b570862f2d9fefa1851f92799ec6cec630a"

  url "https://github.com/yetone/openai-translator/releases/download/v#{version}/OpenAI.Translator_#{version}_#{arch}.dmg"
  name "OpenAI Translator"
  desc "OpenAI based translation tool"
  homepage "https://github.com/yetone/openai-translator"

  app "OpenAI Translator.app"

  zap trash: [
    "~/Library/Application Support/xyz.yetone.apps.openai-translator",
  ]
end
