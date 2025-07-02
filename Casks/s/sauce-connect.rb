cask "sauce-connect" do
  version "5.3.0"
  sha256 "9d29837a7b9e97e2f81ca843107322ac6c0a8f403ba6521702a7fe4fb0207370"

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
