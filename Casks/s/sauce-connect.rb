cask "sauce-connect" do
  version "5.2.3"
  sha256 "4e083e5ed10357be28abc8c136ba725c062ce61e82bcb335ad85bd8bf57db914"

  url "https://saucelabs.com/downloads/sauce-connect/#{version}/sauce-connect-#{version}_darwin.all.zip"
  name "Sauce Connect"
  desc "Proxy server to securely connect to the Sauce Labs automated testing platform"
  homepage "https://docs.saucelabs.com/secure-connections/sauce-connect-#{version.major}/"

  livecheck do
    url "https://docs.saucelabs.com/secure-connections/sauce-connect-#{version.major}/installation/"
    regex(/href=.*?sauce-connect[._-]v?(\d+(?:\.\d+)+)[._-]darwin\.all\.zip/i)
  end

  binary "sc"
  bash_completion "completions/sc.bash"
  fish_completion "completions/sc.fish"
  zsh_completion "completions/sc.zsh"

  # No zap stanza required
end
