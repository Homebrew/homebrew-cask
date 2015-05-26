cask :v1 => 'pixel-check' do
  version '1.3'
  sha256 '99da44c4538463c6476be2f7d6584a4e5a9bfa175895d72e5baf1f3271316b02'

  url "http://macguitar.me/apps/pixelcheck/PXC#{version}.zip"
  name 'PiXel Check'
  homepage 'http://macguitar.me/apps/pixelcheck/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app "PiXel Check #{version}/PiXel Check.app"
end
