class SwsExtension < Cask
  version '2.4.0.3'
  sha256 '3d3459f0d83ec958aac485ce109eb267a87164e537156cbd8934bc8be991f5f9'

  url "http://sws.mj-s.com/download/featured/sws-v#{version}.dmg"
  homepage 'http://sws.mj-s.com/'

  caveats do
    manual_installer "#{caskroom_path}/#{version}/"
  end

  caveats <<-EOS.undent
    Make sure that you have started REAPER at least once, before you install the
    extension. Change the directory and run:

      'sh Install.command'

    You still get 2 errors, but all files will be installed.
  EOS
end
