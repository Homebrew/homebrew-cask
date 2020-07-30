cask "markdown-service-tools" do
  version "2.16"
  sha256 "fcc9c9b88b164547315cde305d4b4096243268b84d24c054e2731449c9e47633"

  url "https://brettterpstra.com/downloads/MarkdownServiceTools#{version}.zip"
  name "Markdown Service Tools"
  homepage "https://brettterpstra.com/projects/markdown-service-tools/"

  service "MarkdownServiceTools#{version}/md - Code - Make Code Block.workflow"
  service "MarkdownServiceTools#{version}/md - Convert - HTML to Clipboard.workflow"
  service "MarkdownServiceTools#{version}/md - Convert - HTML to Markdown.workflow"
  service "MarkdownServiceTools#{version}/md - Convert - MultiMarkdown to HTML.workflow"
  service "MarkdownServiceTools#{version}/md - Convert - MultiMarkdown to RTF.workflow"
  service "MarkdownServiceTools#{version}/md - Convert - Strip Markdown.workflow"
  service "MarkdownServiceTools#{version}/md - Emphasis - Bold.workflow"
  service "MarkdownServiceTools#{version}/md - Emphasis - Italics.workflow"
  service "MarkdownServiceTools#{version}/md - Footnotes - Convert Inline Format.workflow"
  service "MarkdownServiceTools#{version}/md - Footnotes - Make IDs Unique.workflow"
  service "MarkdownServiceTools#{version}/md - Images - Image Link.workflow"
  service "MarkdownServiceTools#{version}/md - Indentation - Indent.workflow"
  service "MarkdownServiceTools#{version}/md - Indentation - Outdent.workflow"
  service "MarkdownServiceTools#{version}/md - Links - Auto-link Wikipedia.workflow"
  service "MarkdownServiceTools#{version}/md - Links - Chrome Tabs.workflow"
  service "MarkdownServiceTools#{version}/md - Links - Clipboard.workflow"
  service "MarkdownServiceTools#{version}/md - Links - Flip Link Style.workflow"
  service "MarkdownServiceTools#{version}/md - Links - New Link.workflow"
  service "MarkdownServiceTools#{version}/md - Links - Safari Tabs.workflow"
  service "MarkdownServiceTools#{version}/md - Links - Self-Link URLs.workflow"
  service "MarkdownServiceTools#{version}/md - Links - To References.workflow"
  service "MarkdownServiceTools#{version}/md - Lists - Bullet List.workflow"
  service "MarkdownServiceTools#{version}/md - Lists - Copy without delimiter.workflow"
  service "MarkdownServiceTools#{version}/md - Lists - Fix Numbered List.workflow"
  service "MarkdownServiceTools#{version}/md - Lists - Numbered List.workflow"
  service "MarkdownServiceTools#{version}/md - Paragraphs - Blockquote.workflow"
  service "MarkdownServiceTools#{version}/md - Paragraphs - Compress Empty Lines.workflow"
  service "MarkdownServiceTools#{version}/md - Paragraphs - Preserve Line Breaks.workflow"
  service "MarkdownServiceTools#{version}/md - Paragraphs - Unwrap.workflow"
  service "MarkdownServiceTools#{version}/md - Tables - Cleanup.workflow"
  service "MarkdownServiceTools#{version}/md - Tables - Create from CSV.workflow"
  service "MarkdownServiceTools#{version}/md - Wrap - Angle Brackets.workflow"
  service "MarkdownServiceTools#{version}/md - Wrap - Parenthesis.workflow"
  service "MarkdownServiceTools#{version}/md - Wrap - Square Brackets.workflow"
end
