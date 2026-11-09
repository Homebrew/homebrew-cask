cask "sauce-connect" do
  version "5.5.4"
  sha256 "e3c074096c7516e3736f1da799325d2be7018e79b2fee56942401b03f80a59e5"

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
