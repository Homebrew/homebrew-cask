cask "happygrep" do
  version "1.0"
  sha256 "05c5f33142c9ea4559b20ca421c76fa0b081ae3edc0d6e3b8f7c3dd8ba21a518"

  url "https://github.com/happypeter/happygrep/releases/download/v#{version}/happygrep.zip"
  name "happygrep"
  desc "Command-line search"
  homepage "https://github.com/happypeter/happygrep"

  # no releases in the past 10 years, it also reference libncursesw.5
  disable! date: "2024-01-01", because: :unmaintained

  binary "happygrep"

  # No zap stanza required
end
