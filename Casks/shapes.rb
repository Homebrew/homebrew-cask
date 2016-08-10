cask 'shapes' do
  version '4.7'
  sha256 '6d556d191ac0e8caa69a6b0c4314ba8aa56f1ceedb07289b024b901cf28d4354'

  url "http://shapesapp.com/dist/Shapes_#{version}.zip"
  appcast 'http://shapesapp.com/appcast/shapes4.rss',
          checkpoint: '4ddb7e777e698a0e68d967f8e46bebeb44eb05d34b590ad5b5158fecc6cb6aaf'
  name 'Shapes'
  homepage 'http://shapesapp.com'
  license :commercial

  depends_on macos: '>= :mountain_lion'

  app 'Shapes.app'
end
