cask "sekey" do
  version "0.1"
  sha256 "8d473f7214ba76b70ca30905e2ebd07d7c421f1cff320285bd8ec8d2a7a5b083"

  url "https://github.com/sekey/sekey/releases/download/#{version}/SeKey-#{version}.pkg"
  name "SeKey"
  desc "Use Touch ID or Secure Enclave for SSH authentication"
  homepage "https://github.com/sekey/sekey/"

  pkg "SeKey-#{version}.pkg"
  binary "/Applications/SeKey.app/Contents/MacOS/sekey"

  uninstall launchctl: "com.ntrippar.sekey",
            pkgutil:   "com.ntrippar.sekey"

  zap trash: "~/.sekey"

  caveats <<~EOS
    Append the following line to your ~/.bash_profile or ~/.zshrc:

      export SSH_AUTH_SOCK=$HOME/.sekey/ssh-agent.ssh

    then source the file to update your current session.
  EOS
end
