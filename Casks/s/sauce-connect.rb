cask "sauce-connect" do
  version "5.5.3"
  sha256 "3b48b144a262c254cfb86483557d80474d696411563d69b2a90c4c12bed7e339"

  url "https://saucelabs.com/downloads/sauce-connect/#{version}/sauce-connect-#{version}_darwin.all.zip"
  name "Sauce Connect"
  desc "Proxy server to securely connect to the Sauce Labs automated testing platform"
  homepage "https://docs.saucelabs.com/secure-connections/sauce-connect-#{version.major}/"

  livecheck do
    url "https://docs.saucelabs.com/secure-connections/sauce-connect-#{version.major}/installation/"
    regex(/href=.*?sauce-connect[._-]v?(\d+(?:\.\d+)+)[._-]darwin\.all\.zip/i)
  end

  depends_on :macos

  binary "sc"
  bash_completion "completions/sc.bash"
  fish_completion "completions/sc.fish"
  zsh_completion "completions/sc.zsh"

  # No zap stanza required
end
