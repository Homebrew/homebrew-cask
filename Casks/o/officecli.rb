# typed: strict
# frozen_string_literal: true

cask "officecli" do
  arch arm: "arm64", intel: "x64"

  version "1.0.39"
  sha256 arm:   "2d8a91f273bba272d90c73fa65465cb24f15757b7c75b744800478ae0f004886",
         intel: "b104747e0c4afc2beb8d182ea64b4be12b379d8232a4b14967307f5c704b0d4f"

  url "https://github.com/iOfficeAI/OfficeCLI/releases/download/v#{version}/officecli-mac-#{arch}",
      verified: "github.com/iOfficeAI/OfficeCLI/"
  name "OfficeCLI"
  desc "CLI tool for AI agents to read, edit, and automate Office documents"
  homepage "https://www.officecli.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  container type: :naked

  binary "officecli-mac-#{arch}", target: "officecli"

  # No zap needed — config lives in ~/.officecli/ but is shared with non-brew installs
end
