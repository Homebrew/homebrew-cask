cask :v1 => 'javafx-scene-builder' do
  version '2.0-b20'
  sha256 '9551326dd98f85204434d293da445eb5f2cf862c785f3dbe420cb4643221d96b'

  url "http://download.oracle.com/otn-pub/java/javafx_scenebuilder/#{version}/javafx_scenebuilder-2_0-macosx-universal.dmg",
      :cookies => {
                    'oraclelicense' => 'accept-securebackup-cookie'
                  }
  homepage 'http://www.oracle.com/technetwork/java/javase/downloads/javafxscenebuilder-info-2157684.html'
  license :unknown    # todo: improve this machine-generated value

  app 'JavaFX Scene Builder 2.0.app'

  caveats <<-EOS.undent
    Installing this Cask means you have AGREED to the Oracle BSD License
    Agreement for JavaFX Scene Builder at

      http://www.oracle.com/technetwork/java/javase/terms/license/oraclebsd-1603217.txt
  EOS
end
