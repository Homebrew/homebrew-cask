cask 'gloomhaven-helper' do
  version ':latest'
  sha256 '5e0d57719024c004a7df47babf1c7ec8007f9eb8393a0d393dd124dce1ea7b0d'

  url 'https://esotericsoftware.com/files/ghh/GloomhavenHelper.zip'
  name 'Gloomhaven Helper'
  homepage 'https://esotericsoftware.com/gloomhaven-helper#Gloomhaven-Helper'

  def install
    libexec.install 'ghh.jar'
    bin.install_symlink libexec / 'run.sh'
  end

  stage_only true
end
