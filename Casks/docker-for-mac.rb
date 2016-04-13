cask 'docker-for-mac' do
  version :latest
  sha256 "34320ebfdef2620c93fb6d959750ab527327b34405ab9f013edb96b8ad62dc54"

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
