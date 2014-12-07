cask :v1 => 'google-cloud-sdk' do
  version :latest
  sha256 :no_check

  url 'https://dl.google.com/dl/cloudsdk/release/google-cloud-sdk.tar.gz'
  homepage 'https://cloud.google.com/sdk/'
  license :apache

  installer :script => 'google-cloud-sdk/install.sh',
            :args => %w{--usage-reporting false --bash-completion false --path-update false --rc-path false},
            :sudo => false

  # todo: transitional, replace #{self.name...} with #{token}
  caveats do
    "#{self.name.sub(/^KlassPrefix/,'').gsub(/([a-zA-Z\d])([A-Z])/,'\1-\2').gsub(/([a-zA-Z\d])([A-Z])/,'\1-\2').downcase} is installed at #{staged_path}/#{self.name.sub(/^KlassPrefix/,'').gsub(/([a-zA-Z\d])([A-Z])/,'\1-\2').gsub(/([a-zA-Z\d])([A-Z])/,'\1-\2').downcase}. Add your profile:

      for bash users
        source '#{staged_path}/#{self.name.sub(/^KlassPrefix/,'').gsub(/([a-zA-Z\d])([A-Z])/,'\1-\2').gsub(/([a-zA-Z\d])([A-Z])/,'\1-\2').downcase}/path.bash.inc'
        source '#{staged_path}/#{self.name.sub(/^KlassPrefix/,'').gsub(/([a-zA-Z\d])([A-Z])/,'\1-\2').gsub(/([a-zA-Z\d])([A-Z])/,'\1-\2').downcase}/completion.bash.inc'

      for zsh users
        source '#{staged_path}/#{self.name.sub(/^KlassPrefix/,'').gsub(/([a-zA-Z\d])([A-Z])/,'\1-\2').gsub(/([a-zA-Z\d])([A-Z])/,'\1-\2').downcase}/path.zsh.inc'
        source '#{staged_path}/#{self.name.sub(/^KlassPrefix/,'').gsub(/([a-zA-Z\d])([A-Z])/,'\1-\2').gsub(/([a-zA-Z\d])([A-Z])/,'\1-\2').downcase}/completion.zsh.inc'"
  end
end
