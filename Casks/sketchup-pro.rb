cask 'sketchup-pro' do
  version '19.1.173,2019'

  language 'de' do
    sha256 'a420125b8257a0a72ff4575ebef6e37702fcc16867bba2b7232d767a13d4ad6a'
    'de'
  end

  language 'en', default: true do
    sha256 'd1758f633db3b74b644ee73eb0eded8128975ac23732740dfc6388a817660146'
    'en'
  end

  language 'es' do
    sha256 '89a00fefb041ebef346d16f9ab4ac3842857e6cb12c2ef65c47ce1bd02a7023b'
    'es'
  end

  language 'fr' do
    sha256 '7c3674855fcfc1d6ca4760cdbf1861c6af40c4ab40ed8dce0909d72c29ec8e7b'
    'fr'
  end

  language 'it' do
    sha256 '103fcd9b85e627226fe9cef39ccfa45b55cec7d4dfccf3e26dc17da7412f4d13'
    'it'
  end

  language 'ja' do
    sha256 'b18b3eef80cf46a24bd43eb69758788a3d2c2ea73a1ca7a55ce84021480a06aa'
    'ja'
  end

  language 'ko' do
    sha256 '2a6d9df6f694b4d2c275e99847d604b9a32d90cde7f98d0427f845679e5c1b78'
    'ko'
  end

  language 'pt-BR' do
    sha256 '8a14e4f163d220f037d2032acbf602e6843fd9bbf98b392c18f1d44b30e5fe53'
    'pt-BR'
  end

  language 'ru' do
    sha256 'da14fb9344909a70dc51f9caaa96e6cbbb3268108546fc29c84a877e20d5d3ce'
    'ru'
  end

  language 'sv' do
    sha256 'd447b5ce0ac27529882ec2a90417fb632e26d5ee582bfb819d3af165d0fe82cb'
    'sv'
  end

  language 'zh-CN' do
    sha256 '1e7413399a284612a43c206fa671281ee9c5e2c09835f8082ed5c601f48f56ce'
    'zh-CN'
  end

  language 'zh-TW' do
    sha256 'a3700e4d4474d637a29aff19a5dd3b70126591ad043e5a75e59fa9d1f928a4a9'
    'zh-TW'
  end

  # downloads can be found at https://sketchup.com/download/all
  url "https://www.sketchup.com/sketchup/SketchUpPro-#{language}-dmg"
  name 'SketchUp'
  homepage 'https://www.sketchup.com/'

  suite "SketchUp #{version.after_comma}"

  zap trash: [
               "~/Library/Application Support/SketchUp #{version.after_comma}",
               "~/Library/Caches/com.sketchup.SketchUp.#{version.after_comma}",
             ]
end
