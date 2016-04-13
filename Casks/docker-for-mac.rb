cask 'docker-for-mac' do
  version :latest
  sha256 :no_check

  url 'https://dyhfha9j6srsj.cloudfront.net/Docker.dmg'
  name 'Docker For Mac'
  homepage 'https://beta.docker.com/docs/mac/'
  license :gratis

  auto_updates false
  app 'Docker.app'

  uninstall_preflight do
    system "#{staged_path}/Docker.app/Contents/MacOS/Docker", '--uninstall'
  end

  uninstall pkgutil: 'com.docker.docker'

  caveats <<-EOS.undent
    #{token} needs an installer to be run after cask install:
    sudo #{staged_path}/Docker.app/Contents/MacOS/Docker --token="your beta token"
  EOS
end
