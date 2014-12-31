cask :v1 => 'google-cloud-sdk' do
  version :latest
  sha256 :no_check

  url 'https://dl.google.com/dl/cloudsdk/release/google-cloud-sdk.tar.gz'
  homepage 'https://cloud.google.com/sdk/'
  license :apache

  installer :script => 'google-cloud-sdk/install.sh',
            :args => %w{--usage-reporting false --bash-completion false --path-update false --rc-path false},
            :sudo => false

  caveats do
    "#{token} is installed at #{staged_path}/#{token}. Add your profile:

      for bash users
        source '#{staged_path}/#{token}/path.bash.inc'
        source '#{staged_path}/#{token}/completion.bash.inc'

      for zsh users
        source '#{staged_path}/#{token}/path.zsh.inc'
        source '#{staged_path}/#{token}/completion.zsh.inc'"
  end
end
