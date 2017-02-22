cask 'forklift' do
  version '3.0'
  sha256 '2055f64398e09a61c07e42d74c8074d58739ccc1d1a228f719acde0ef865f2d8'

  url "http://download.binarynights.com/ForkLift#{version}.zip"
  appcast "https://updates.binarynights.com/ForkLift#{version.major}/update.xml",
          checkpoint: 'e30a4752e0ef26d7b8aaf988ec151b083334d2bc04d3c6155ab04ae9f5e6623f'
  name 'ForkLift'
  homepage 'https://binarynights.com/forklift/'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app 'ForkLift.app'

  zap delete: [
                '~/Library/Application Support/ForkLift',
                '~/Library/Caches/com.binarynights.ForkLift-3',
                '~/Library/Preferences/com.binarynights.ForkLift-3.plist',
                '~/Library/Saved Application State/com.binarynights.ForkLift-3.savedState',
              ]
end
