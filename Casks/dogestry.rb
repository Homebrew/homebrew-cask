cask 'dogestry' do
  version '2.1.5'
  sha256 '7629c0c143f86c45906a502906afe926b35252ba77588d5c63566c3ffceb5af0'

  url "https://github.com/dogestry/dogestry/releases/download/v#{version}/dogestry-darwin-#{version}"
  appcast 'https://github.com/dogestry/dogestry/releases.atom',
          checkpoint: 'b18d1b3ed7f5ec24935c8a8f569ed4c5108303f254210b27947e72ccbd869c6f'
  name 'Dogestry'
  homepage 'https://github.com/dogestry/dogestry'
  license :mit

  container type: :naked

  binary "dogestry-darwin-#{version}", target: 'dogestry'

  postflight do
    set_permissions "#{staged_path}/dogestry-darwin-#{version}", '0755'
  end
end
