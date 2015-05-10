cask :v1 => 'affinity-photo' do
  version :latest
  sha256 :no_check

  url 'https://s3.amazonaws.com/affinity-beta/download/Affinity+Photo+Beta.dmg'
  name 'Affinity Photo'
  homepage 'https://affinity.serif.com/en-us/photo'
  license :unknown

  app 'Affinity Photo Beta.app'
end
