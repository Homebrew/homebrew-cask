cask 'cubicsdr' do
  version '0.2.0,rc4'
  sha256 '981292e70ae0aad21cb86c780d53cee0a5b5f57e1e4f883d612af6d26ddb6015'

  # github.com/cjcliffe/CubicSDR was verified as official when first introduced to the cask
  url "https://github.com/cjcliffe/CubicSDR/releases/download/#{version.before_comma}-beta-#{version.after_comma}/CubicSDR-#{version.before_comma}-Darwin-#{version.after_comma}.dmg"
  appcast 'https://github.com/cjcliffe/CubicSDR/releases.atom',
          checkpoint: '25e6bd2e65ae37f74f6659b8600bddad0bda93944f32308adc41339949dfd7de'
  name 'CubicSDR'
  homepage 'http://cubicsdr.com/'

  app 'CubicSDR.app'
end
