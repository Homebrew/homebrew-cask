cask "sauce-connect" do
  version "5.1.1"
  sha256 "d0a29f2df3277e8468c55810ef99685bed632ec6d2eed9fdbd941f2f8faf2354"

  url "https://saucelabs.com/downloads/sauce-connect/#{version}/sauce-connect-#{version}_darwin.all.zip"
  name "Sauce Connect"
  desc "Proxy server to securely connect to the Sauce Labs automated testing platform"
  homepage "https://docs.saucelabs.com/secure-connections/sauce-connect-#{version.major}/"

  livecheck do
    url "https://docs.saucelabs.com/secure-connections/sauce-connect-#{version.major}/installation/"
    regex(/href=.*?sauce-connect[._-]v?(\d+(?:\.\d+)+)[._-]darwin\.all\.zip/i)
  end

  binary "sc"
  binary "completions/sc.bash", target: "#{HOMEBREW_PREFIX}/etc/bash_completion.d/sc"
  binary "completions/sc.fish", target: "#{HOMEBREW_PREFIX}/share/fish/vendor_completions.d/sc.fish"
  binary "completions/sc.zsh", target: "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_sc"

  # No zap stanza required
end
