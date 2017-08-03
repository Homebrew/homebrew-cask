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

  uninstall delete: "#{staged_path}/#{token}" # Not actually necessary, since it would be deleted anyway. It is present to make clear an uninstall was not forgotten and that for this cask it is indeed this simple.

  caveats <<-EOS.undent
    #{token} is installed at #{staged_path}/#{token}. Add your profile:

      for bash users
        source '#{staged_path}/#{token}/path.bash.inc'
        source '#{staged_path}/#{token}/completion.bash.inc'

      for zsh users
        source '#{staged_path}/#{token}/path.zsh.inc'
        source '#{staged_path}/#{token}/completion.zsh.inc'
  EOS
end
