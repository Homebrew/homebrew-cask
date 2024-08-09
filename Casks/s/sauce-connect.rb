cask "sauce-connect" do
  version "5.1.2"
  sha256 "094ec3ce2bccfbc0aaeb4dbb34d54b0cc44200177ab16c8945f90af94909a9f6"

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
