cask "openai-translator" do
  version "0.0.36"
  sha256 :no_check # Since we have different binaries for different CPU types

  url do
    on_intel do
      "https://github.com/yetone/openai-translator/releases/download/v#{version}/OpenAI.Translator_#{version}_x64.dmg"
    end
    on_arm do
      "https://github.com/yetone/openai-translator/releases/download/v#{version}/OpenAI.Translator_#{version}_aarch64.dmg"
    end
  end
  name "OpenAI Translator"
  desc "OpenAI based translation tool"
  homepage "https://github.com/yetone/openai-translator"

  app "OpenAI Translator.app"

zap trash: [
  "~/Library/Application Support/xyz.yetone.apps.openai-translator",
]
end