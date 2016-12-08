cask 'downie' do
  version '2.5.10,1345'
  sha256 'a1ffeb14cbab15b778368060fde3ee6eb9bca93ca5097c9236a2ac45dc49edeb'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.after_comma}.zip"
  appcast 'https://trial.charliemonroe.net/downie/updates_2.3.xml',
          checkpoint: 'b46b900f16f9e03a98380a718ecf3e071e46108b76df2487053fcfbac77e3152'
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :yosemite'

  app 'Downie.app'
end
