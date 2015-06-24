cask :v1 => 'docker-machine' do
  version 'v0.3.0'
  sha256 '1b94543ee506bfc75cad43662b346e3560aacf9d47fc78b9d27c2158df486026'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/docker/machine/releases/download/#{version}/docker-machine_darwin-amd64"
  appcast 'https://github.com/docker/machine/releases.atom'
  name 'Docker Machine'
  homepage 'https://docs.docker.com/machine'
  license :apache

  container :type => :naked
  binary 'docker-machine_darwin-amd64', :target => 'docker-machine'

  postflight do
    system '/bin/chmod', '--', '0755', "#{staged_path}/docker-machine_darwin-amd64"
  end

  depends_on :formula => 'docker'
  depends_on :arch => :x86_64
end
