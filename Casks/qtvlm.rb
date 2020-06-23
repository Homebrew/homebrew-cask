cask 'qtvlm' do
  version '5.9.10,217'
  sha256 'b2fe20e80fae8d836a3fc4da0c613b62be29ff2f4de3fb0993fd7151f41971f6'

  url "https://www.meltemus.com/index.php/en/download/send/3-mac-os/#{version.after_comma}-qtvlm-#{version.before_comma.dots_to_hyphens}-2"
  name 'qtvlm'
  homepage 'https://www.meltemus.com/index.php/en/'

  app 'qtVlm'
end
