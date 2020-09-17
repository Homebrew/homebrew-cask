cask "my-budget" do
  version "3.4.2-beta"
  sha256 "ba47e4e4feb184a540f944cb69fbbc8f6a6d7a71ec5312e8f7d58fd20d125a34"

  # github.com/reZach/my-budget/ was verified as official when first introduced to the cask
  url "https://github.com/reZach/my-budget/releases/download/#{version}/my-budget-#{version}.dmg"
  appcast "https://github.com/reZach/my-budget/releases.atom"
  name "My Budget"
  desc "Free, open-source offline cross-platform budgeting solution"
  homepage "https://rezach.github.io/my-budget/"

  app "My Budget.app"
end
