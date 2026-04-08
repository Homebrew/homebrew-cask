cask "sauce-connect" do
  version "5.5.1"
  sha256 "778c9f2977d3144bcbe7ed8cbbce51c1ac75a8df155aca2297a24e2ca3df8ebc"

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
