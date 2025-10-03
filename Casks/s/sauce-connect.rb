cask "sauce-connect" do
  version "5.3.1"
  sha256 "660c07baa8f5d48fc259c6279ed78723359900f497705409bfae3c1dcdd648e2"

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
