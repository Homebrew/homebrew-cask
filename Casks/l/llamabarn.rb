cask "llamabarn" do
  version "0.9.1"
  sha256 "fc77e7886a6c47f0f38477bff11608c1c671cb1e0f6aa3eb2f76785872391fe1"

  url "https://github.com/ggml-org/LlamaBarn/releases/download/#{version}/LlamaBarn.dmg"
  name "LlamaBarn"
  desc "Menu bar app for running local LLMs"
  homepage "https://github.com/ggml-org/LlamaBarn"

  depends_on macos: ">= :sequoia"

  app "LlamaBarn.app"

  zap trash: "~/Library/Application Support/LlamaBarn"
end
