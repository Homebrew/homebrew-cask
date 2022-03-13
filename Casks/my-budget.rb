cask "my-budget" do
  version "3.4.2-beta"
  sha256 "ba47e4e4feb184a540f944cb69fbbc8f6a6d7a71ec5312e8f7d58fd20d125a34"

  url "https://github.com/reZach/my-budget/releases/download/#{version}/my-budget-#{version}.dmg",
      verified: "github.com/reZach/my-budget/"
  name "My Budget"
  desc "Budgeting tool"
  homepage "https://rezach.github.io/my-budget/"

  # This cask uses an unstable version and this `livecheck` block is only used
  # to prevent livecheck from skipping pre-release versions by default. This
  # should be removed/updated if the cask is updated to a stable version.
  livecheck do
    url :url
  end

  app "My Budget.app"
end
