cask 'google-cloud-sdk' do
  version '197.0.0'
  sha256 '3d62d0d786926ff3212f48930ce3ab5494e1b271dd42624a2eae029174d61e08'

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

  caveats <<~EOS
    #{token} is installed at #{staged_path}/#{token}. Add your profile:

      for bash users
        source '#{staged_path}/#{token}/path.bash.inc'
        source '#{staged_path}/#{token}/completion.bash.inc'

      for zsh users
        source '#{staged_path}/#{token}/path.zsh.inc'
        source '#{staged_path}/#{token}/completion.zsh.inc'
  EOS
end
