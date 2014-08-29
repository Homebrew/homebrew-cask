class JavafxSceneBuilder < Cask
  version '2.0'
  sha256 '9551326dd98f85204434d293da445eb5f2cf862c785f3dbe420cb4643221d96b'

  url 'http://download.oracle.com/otn-pub/java/javafx_scenebuilder/2.0-b20/javafx_scenebuilder-2_0-macosx-universal.dmg',
      :cookies => {
                    'oraclelicense' => 'accept-securebackup-cookie'
                  }

  homepage 'http://www.oracle.com/technetwork/java/javase/downloads/javafxscenebuilder-info-2157684.html'

  link 'JavaFX Scene Builder 2.0.app'
end
