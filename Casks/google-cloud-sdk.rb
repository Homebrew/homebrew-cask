cask 'google-cloud-sdk' do
  version '165.0.0'
  sha256 'e4ff9f899ae94efecb601feb5b24ca48918317986a5f29200467736ff4132c7a'

  url "https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-#{version}-darwin-x86_64.tar.gz"
  name 'Google Cloud SDK'
  homepage 'https://cloud.google.com/sdk/'

  installer script: {
                      executable: 'google-cloud-sdk/install.sh',
                      args:       ['--usage-reporting', 'false', '--bash-completion', 'false', '--path-update', 'false', '--rc-path', 'false', '--quiet'],
                    }
  binary 'google-cloud-sdk/bin/bq'
  binary 'google-cloud-sdk/bin/gcloud'
  binary 'google-cloud-sdk/bin/git-credential-gcloud.sh', target: 'git-credential-gcloud'
  binary 'google-cloud-sdk/bin/gsutil'
  artifact 'google-cloud-sdk/completion.bash.inc', target: "#{HOMEBREW_PREFIX}/etc/bash_completion.d/google-cloud-sdk-completion.bash"
  artifact 'google-cloud-sdk/completion.zsh.inc', target: "#{HOMEBREW_PREFIX}/share/zsh/site-functions/google-cloud-sdk-completion.zsh"
  artifact 'google-cloud-sdk/path.bash.inc', target: "#{HOMEBREW_PREFIX}/etc/bash_completion.d/google-cloud-sdk-path.bash"
  artifact 'google-cloud-sdk/path.fish.inc', target: "#{HOMEBREW_PREFIX}/share/fish/vendor_completions.d/google-cloud-sdk-path.fish"
  artifact 'google-cloud-sdk/path.zsh.inc', target: "#{HOMEBREW_PREFIX}/share/zsh/site-functions/google-cloud-sdk-path.zsh"

  uninstall delete: "#{staged_path}/#{token}" # Not actually necessary, since it would be deleted anyway. It is present to make clear an uninstall was not forgotten and that for this cask it is indeed this simple.
end
