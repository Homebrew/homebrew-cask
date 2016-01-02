cask 'reaper' do
  version '5.11'

  if Hardware::CPU.is_32_bit?
    sha256 '496be71d8d8b4ce8fa9a4476d78ef1d93be9645db4a5019b5ad362edbd788aba'
    url "http://www.reaper.fm/files/#{version.to_i}.x/reaper#{version.delete('.')}_i386.dmg"
    app 'REAPER.app'
    app 'ReaMote.app'
  else
    sha256 '810d88c51b9878e056565347959458cef79791e1fd5969d662304ab95f24c4e1'
    url "http://www.reaper.fm/files/#{version.to_i}.x/reaper#{version.delete('.')}_x86_64.dmg"
    app 'REAPER64.app'
    app 'ReaMote64.app'
  end

  name 'Reaper'
  homepage 'http://www.reaper.fm/'
  license :commercial

  zap :delete => [
                  '~/Library/Application Support/REAPER',
                  '~/Library/Saved Application State/com.cockos.reaper.savedState',
                  '~/Library/Saved Application State/com.cockos.reaperhosti386.savedState',
                  '~/Library/Saved Application State/com.cockos.reaperhostx8664.savedState',
                  '~/Library/Saved Application State/com.cockos.ReaMote.savedState'
                 ]
end
