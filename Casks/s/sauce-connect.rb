cask "sauce-connect" do
  version "5.5.7"
  sha256 "19ddfa236362a4b770feee18f17a64df6261fb5b87a44ac55c185b3add2bba0c"

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
