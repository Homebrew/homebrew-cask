cask "font-zpix" do
  version "3.1.10"
  sha256 "4f5d731b71e389e757f7a2816b8d37470ff401ced2e96ab2a336db5ee41c03c7"

  url "https://github.com/SolidZORO/zpix-pixel-font/releases/download/v#{version}/zpix.ttf",
      verified: "github.com/SolidZORO/zpix-pixel-font/"
  name "Zpix"
  homepage "https://zpix.vercel.app/"

  font "zpix.ttf"

  # No zap stanza required
end
