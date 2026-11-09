cask "sauce-connect" do
  version "5.5.5"
  sha256 "69d8febc827d5278972a8644f91b96b6d681df611b289af97210bf756db28856"

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
  zsh_completion "completions/sc.zsh"
  fish_completion "completions/sc.fish"

  zap :not_required
end
