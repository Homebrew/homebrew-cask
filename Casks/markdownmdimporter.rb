cask 'markdownmdimporter' do
  version :latest
  sha256 :no_check

  url 'http://cdn3.brettterpstra.com/downloads/Markdown.mdimporter.zip'
  name 'Markdown Spotlight Plugin'
  homepage 'http://brettterpstra.com/2011/10/18/fixing-spotlight-indexing-of-markdown-content/'

  artifact 'Markdown.mdimporter', target: "#{ENV['HOME']}/Library/Spotlight/Markdown.mdimporter"

  postflight do
    system 'mdimport', '-r', "#{ENV['HOME']}/Library/Spotlight/Markdown.mdimporter"
  end
end
