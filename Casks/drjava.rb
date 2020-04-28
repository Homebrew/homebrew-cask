cask 'drjava' do
  version '20190813-220051,beta'
  sha256 '69bdccf632ca8396876bd61cd362027d9ec90ea0a4e8b4edadec438d5b253ff9'

  # downloads.sourceforge.net/drjava/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/drjava/drjava-#{version.after_comma}-#{version.before_comma}.jar"
  appcast 'https://sourceforge.net/projects/drjava/rss?path=/1.%20DrJava%20Stable%20Releases'
  name 'DrJava'
  homepage 'http://www.drjava.org/'

  container type: :naked

  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/drjava.wrapper.sh"
  binary shimscript, target: 'drjava'

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      cd "$(dirname "$(readlink -n "$0")")" && \
        nohup java "$@" -jar drjava-#{version.after_comma}-#{version.before_comma}.jar \
        >/dev/null 2>&1 &
    EOS
  end

  zap trash: '~/.drjava'

  caveats do
    depends_on_java '8'
  end
end
